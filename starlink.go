package main

import (
	"context"
	"flag"
	"net/http"

	"github.com/b0ch3nski/go-starlink/model/device"
	"github.com/gin-gonic/gin"
	"wyocode.com/starlink/slclient"
)

var (
	addr = "192.168.100.1:9200"
	req  = "status"
)

func init() {
	flag.StringVar(&addr, "addr", addr, "grpc addr (dishy is at 192.168.100.1:9200, wifi is at 192.168.1.1:9000")
	flag.StringVar(&req, "req", req, "status or ping")
	flag.Parse()
}

// status and location object
type StarlinkStatus struct {
	StarlinkStatus   device.DishGetStatusResponse
	StarlinkLocation device.GetLocationResponse
}

func getStatus(c *gin.Context) {
	ctx := context.Background()

	starlinkClient, _ := slclient.NewClient(ctx, slclient.DefaultDishyAddr)
	starlinkStatus, _ := starlinkClient.Status(ctx)

	if starlinkStatus.Config.LocationRequestMode != device.DishConfig_LOCAL {
		outStatus := StarlinkStatus{
			StarlinkStatus: *starlinkStatus,
		}
		c.IndentedJSON(http.StatusOK, outStatus)
		return
	}

	location, _ := starlinkClient.Location(ctx)

	outStatus := StarlinkStatus{
		StarlinkStatus:   *starlinkStatus,
		StarlinkLocation: *location,
	}

	c.IndentedJSON(http.StatusOK, outStatus)
}

func stowStarlink(c *gin.Context) {
	ctx := context.Background()

	starlinkClient, _ := slclient.NewClient(ctx, slclient.DefaultDishyAddr)
	starlinkClient.Stow(ctx)

	c.IndentedJSON(http.StatusOK, gin.H{"message": "Stowing Starlink"})
}

func unstowStarlink(c *gin.Context) {
	ctx := context.Background()

	starlinkClient, _ := slclient.NewClient(ctx, slclient.DefaultDishyAddr)
	starlinkClient.Unstow(ctx)

	c.IndentedJSON(http.StatusOK, gin.H{"message": "Unstowing Starlink"})
}

func main() {

	// ctx := context.Background()

	// starlinkClient, _ := slclient.NewClient(ctx, slclient.DefaultDishyAddr)
	// starlinkStatus, _ := starlinkClient.Status(ctx)

	router := gin.Default()

	router.GET("/", getStatus)

	router.GET("/stow", stowStarlink)

	router.GET("/unstow", unstowStarlink)

	router.Run(":8080")

}

package main

import (
    "github.com/labstack/echo"
    "echo-golang-kit/app/controllers"
)
func main()  {
    e := echo.New()
    e.GET("/", controllers.Index)

    e.Logger.Fatal(e.Start(":1323"))
}

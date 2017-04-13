package test

import (
    "github.com/labstack/echo"
    "net/http"
)

func Index(c echo.Context) error {
    return c.String(http.StatusOK, "Hello, World!")
}
func Index2(c echo.Context) error {
    return c.String(http.StatusOK, "Hello, World!")
}

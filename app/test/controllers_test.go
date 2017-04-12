package test

import (
    "net/http"
    "net/http/httptest"
    "testing"

    "github.com/labstack/echo"
    //"fmt"
    //. "github.com/smartystreets/goconvey/convey"

)

var (
    e = echo.New()
    req = new(http.Request)
    rec = httptest.NewRecorder()
)
func TestIndex(t *testing.T) {
    //c := e.NewContext(req, rec)
    //c.SetPath("/")
    //Index(c)
    //fmt.Println(rec.Body.String())
    //
    //Convey("index print", t, func() {
    //    So("Hello, World!", ShouldEqual, rec.Body.String())
    //})
}

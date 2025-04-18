using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

[ApiController]
[Route("[controller]")]
public class TestController : ControllerBase
{
    [HttpGet]
    public IActionResult GetAll(){
        return Ok(new List<string>(){
            "Test1",
            "Test2",
            "Test3"
        });
    }
}
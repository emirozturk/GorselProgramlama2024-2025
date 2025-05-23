using System;
using System.Collections.Generic;

namespace projebackend.Models;

public class VMUser
{
    public int id { get; set; }

    public string username { get; set; } = null!; 
    public string token { get; set; } = null!;
    public VMUser(){}
    public VMUser(user user)
    {
        id = user.id;
        username = user.username;
    }
}

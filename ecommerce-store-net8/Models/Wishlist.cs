using System;
using System.Collections.Generic;

namespace ecommerce_store_net8.Models;

public partial class Wishlist
{
    public int Id { get; set; }

    public string? UserId { get; set; }

    public int? ProductId { get; set; }

    public virtual Product? Product { get; set; }
}

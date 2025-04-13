using System;
using System.Collections.Generic;

namespace ecommerce_store_net8.Models;

public partial class ProductImage
{
    public int Id { get; set; }

    public int? ProductId { get; set; }

    public string? ImageUrl { get; set; }

    public virtual Product? Product { get; set; }
}

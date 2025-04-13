using System;
using System.Collections.Generic;

namespace ecommerce_store_net8.Models;

public partial class ShippingAddress
{
    public int Id { get; set; }

    public string? UserId { get; set; }

    public string? FullName { get; set; }

    public string? AddressLine1 { get; set; }

    public string? AddressLine2 { get; set; }

    public string? City { get; set; }

    public string? State { get; set; }

    public string? ZipCode { get; set; }

    public string? Country { get; set; }

    public string? Phone { get; set; }
}

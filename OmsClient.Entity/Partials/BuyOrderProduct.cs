﻿using System.ComponentModel.DataAnnotations.Schema;

/*
 * Copyright (c) 2020 深圳市德旺荣科技发展有限公司
 * All rights reserved.
 */
namespace OmsClient.Entity
{
    public partial class BuyOrderProduct
    {
        [NotMapped]
        public string BuyOrderNumber { get; set; }
    }
}
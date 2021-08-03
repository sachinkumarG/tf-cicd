terraform {
backend "azurerm" { 
 resource_group_name   = "sachin-temp-tfstate"    
 storage_account_name  = "sachintemptfstate"     
 container_name        = "temptfstate"     
 key                   = "terraform.sachintemptfstate" 
 } 
} 

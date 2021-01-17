variable "lbname" { 
 type   = string
 default = ""

}


variable "internal" { 
 type   = string
 default = ""

}

variable "lbtype" { 
 type   = string
 default = ""

}

variable "lbsg" { 
 type   = list(string)
 default = [""] 

}

variable "instanceid" { 
 type   = list(string)
 default = [""] 

}

variable "lbsubnet" { 
 type   = list(string)
 default = [""] 

}

variable "nametargetgroup" { 
 type   = string
 default = ""

}

variable "portlb" { 
 type   = string
 default = ""

}

variable "portinstance" { 
 type   = string
 default = ""

}

variable "protocol" { 
 type   = string
 default = ""

}

variable "vpcid" { 
 type   = string
 default = ""

}

variable "target_type" { 
 type   = string
 default = ""

}





## count
variable "ins_name" {
    type = list(string)
    description = "give instance name"
  
}
variable "ami" {
    type = list(string)
    description = "give ami"
  
 }

##for each(map)
 variable "loop_name" {
    type = map(string)
    description = "provide name for tags"
  
}

## for each(set)
variable "set2" {
    type = set(string)
    description = "give instance ami"
}

### nested map
variable "loop_name1" {
    type = map(any)
    description = "give instance ami"
}

#s3 use for_each (map)
variable "bucket" {
    type=map(any)
    description = "anshul bucket "
  
}
## s3 use for_each (set)
variable "set1" {
    type=set(any)
    description = "anshul bucket "
  
}
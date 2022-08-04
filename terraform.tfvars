##count
ins_name = [ "anshul","ashu","mayank" ]
  ami = [ "ami-09de362f44ba0a166","ami-05c8ca4485f8b138a","ami-068257025f72f470d" ]


##for each(map)
 loop_name = {
  "owner1" = "anshul2"
   
   
  "owner2" = "anshul3"

  
     
}

# for each (set)
set2= [ "abc","def" ]

# ###nested map
 loop_name1 = {
  "owner1" ={ "ami"="ami-ami-076e3a557efe1aa9c",
    "instance_type"="t2.micro"
    "name" ={
        "my_name"="anshul"
    }
  }
  
    
    "owner2" = {"ami"="ami-ami-076e3a557efe1aa9c",
    "instance_type"="t2.micro"
    "name" ={
        "my_name"="anshu3"
    }
 }
 }

   
   

## using s3 foreach(map)
bucket = {"name" ="anshul12"}

## using s3 foreach (set)
set1=["bucket6"]
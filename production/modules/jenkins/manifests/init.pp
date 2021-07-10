class jenkins (
  
)
{
  notify { "In Jenkins init.pp" }
  #contain etc::users
  contain jenkins::install
}

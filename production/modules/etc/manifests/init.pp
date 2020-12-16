class etc_passwd (

  String 	$etc_passwd_path,
  String 	$etc_passwd_mode,
  String 	$etc_passwd_owner,
  String 	$etc_passwd_group,
  Boolean 	$etc_passwd_group,

  String 	$etc_shadow_path,
  String 	$etc_passwd_mode,
  String 	$etc_passwd_owner,
  String 	$etc_passwd_group,
)
{
  contain etc_passwd::users
  contain etc_passwd::fids
}

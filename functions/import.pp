function iay::import(
  Pattern[/^[^.]+\.[^.]+$/] $key,
  String                    $val,
  Any                       $ret,
) >> Any
{
  exec { "iay-terraform-import ${title}":
    before   => Anchor['iay-terraform-imported'],
    command  => "terraform import ${title} '${val}' >>${iay::logfile} 2>&1",
    provider => 'shell',
    user     => $iay::user,
    group    => $iay::group,
    cwd      => $iay::workdir,
    require  => Anchor['iay-terraform-initialized'],
    returns  => [0, 1],
  }
  $ret
}

# Process a resource block.

class iay::resource {
  if $iay::hash.has_key('resource') {
    $resource = $iay::hash['resource']
    if $resource {
      include iay::terraform
      iay::content { 'resource':
        value => Hash(
          $resource.map |$rtype, $rhash| {
            [
              $rtype,
              Hash(
                $rhash.map |$rname, $rval| {
                  [
                    $rname,
                    Hash(
                      $rval.reduce([]) |$m, $v| {
                        $v[0] ? {
                          'import'    => iay::import("${rtype}.${rname}", $v[1], $m),
                          /password$/ => $m + { $v[0] => unwrap($v[1]) },
                          default     => $m + $v,
                        }
                      }
                    )
                  ]
                }
              )
            ]
          }
        ),
      }
    }
  }
}

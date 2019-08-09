# Process a provider block.

class iay::provider {
  if $iay::hash.has_key('provider') {
    $provider = $iay::hash['provider']
    if $provider {
      iay::content { 'provider':
        value => Hash(
          $provider.map |$pname, $pval| {
            [
              $pname,
              Hash(
                $pval.reduce([]) |$m, $v| {
                  $v[0] ? {
                    /password$/ => $m + { $v[0] => unwrap($v[1]) },
                    default     => $m + $v,
                  }
                }
              ),
            ]
          }
        ),
      }
    }
  }
}

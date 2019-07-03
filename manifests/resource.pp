# Process a resoruce block.

define iay::resource {
  $resource = $iay::hash.get('resource')
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
                    $rval.reduce({}) |$m, $v| {
                      $v[0] ? {
                        'import' => iay::import("${rtype}.${rname}", $v[1], $m),
                        default  => $m + $v,
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

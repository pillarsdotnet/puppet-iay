# Process a data block.

class iay::data {
  if $iah::hash.has_key('data') {
    $data = $iay::hash['data']
    if $data {
      iay::content { 'data':
        value => $data,
      }
    }
  }
}

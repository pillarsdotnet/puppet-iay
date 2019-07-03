# Process a data block.

class iay::data {
  $data = $iay::hash.get('data')
  if $data {
    iay::content { 'data':
      value => $data,
    }
  }
}

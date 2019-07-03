# Process a data block.

define iay::data {
  $data = $iay::hash.get('data')
  if $data {
    iay::content { 'data':
      value => $data,
    }
  }
}

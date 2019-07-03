# Process a provider block.

define iay::provider {
  $provider = $iay::hash.get('provider')
  if $provider {
    iay::content { 'provider':
      value => $provider,
    }
  }
}

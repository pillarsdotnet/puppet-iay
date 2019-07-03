# Process a provider block.

class iay::provider {
  $provider = $iay::hash.get('provider')
  if $provider {
    iay::content { 'provider':
      value => $provider,
    }
  }
}

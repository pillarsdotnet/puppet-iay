# Process a provider block.

class iay::provider {
  if $iay::hash.has_key('provider')
    $provider = $iay::hash['provider']
    if $provider {
      iay::content { 'provider':
        value => $provider,
      }
    }
  }
}

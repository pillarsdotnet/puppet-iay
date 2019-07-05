# Create terraform content file.

define iay::content(Hash $value) {
  $content = { $title => $value }
  file { "iay ${title}":
    ensure  => 'file',
    before  => Anchor['iay-terraform-configured'],
    content => inline_template(
      '<%= JSON.pretty_generate(@content) %>'
    ),
    group   => $iay::group,
    mode    => '0640',
    owner   => $iay::user,
    path    => "${iay::workdir}/${title}.tf.json",
  }
}

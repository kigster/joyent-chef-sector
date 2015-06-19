name 'production'
description 'Production environment'
override_attributes(
  'postgres' => {
    'version' => '9.4.4',
    'client' => { 'install_via' => 'source' }
  }
)

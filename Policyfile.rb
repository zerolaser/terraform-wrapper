name 'terraform-wrapper'
#default_source :chef_repo, '~/chef-repo/cookbooks/'
default_source :supermarket, "https://supermarket.chef.io"
cookbook 'terraform-wrapper', path: '.'

run_list %w( terraform-wrapper::default )

named_run_list 'terraform', %w(
  terraform-wrapper::default
)

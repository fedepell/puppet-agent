platform "solaris-11-i386" do |plat|
  plat.servicedir "/lib/svc/manifest"
  plat.defaultdir "/lib/svc/method"
  plat.servicetype "smf"
  plat.vmpooler_template "solaris-11-x86_64"
  plat.provision_with("/usr/bin/pkg unset-publisher solarisstudio")
  plat.add_build_repository 'http://solaris-11-reposync.delivery.puppetlabs.net:81', 'puppetlabs.com'
  plat.install_build_dependencies_with "pkg install ", " || [[ $? -eq 4 ]]"
  plat.output_dir File.join("solaris", "11", "puppet5")
end

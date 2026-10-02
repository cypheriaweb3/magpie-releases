cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.660"
  sha256 arm:   "8ef5a9a5603069aa43d38612b33b49a51eab9424d93383a5c06b853c23a7558b",
         intel: "bcce0025edd0c7f45752d1f14f99318d6e3b92d1441e562eaf1b803cab54ae42"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

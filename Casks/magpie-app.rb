cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.697"
  sha256 arm:   "234882cc4dfd3ca81837fe6d523b862bd765731af4dbe3d7e4df640b72ead02a",
         intel: "46c154872b4ea2a28cd6365b682b53ea0e17760192c5c7ad630ef4d05afa7f0c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

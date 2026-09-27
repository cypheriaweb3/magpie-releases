cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.213"
  sha256 arm:   "c49e02a490b2a42e325293467d3ef9a461196ae1b9c023ff0d5100f8048876bd",
         intel: "a4079487f0c5a041e10420f38e709f7775836535b286f2ddabf0e03b7ac34395"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

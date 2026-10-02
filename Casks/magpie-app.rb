cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.616"
  sha256 arm:   "e413e2c9494ffdd5e0b82fd76c41b005951f96d8c70a718dfe561a7f0e1028a7",
         intel: "35c02aa85a401759ba5f22944c341cd87d7dd3029a09d108fae60630ade3604c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

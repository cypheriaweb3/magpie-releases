cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.617"
  sha256 arm:   "e4ad71722dea482291230c0e51f13eff5c8e8ab4131d6355a7b31d3299c4f770",
         intel: "c8c56316798f05c2fa6645a47b5d6a0d2922b5416ba88eb286487eff808d8604"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

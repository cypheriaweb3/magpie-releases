cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.170"
  sha256 arm:   "e51c180e76882d346dac662cdf76f1a45397ff6f48f4e9168aa7a3197366cdf0",
         intel: "28dc056eb68d0f587393b624d86d41e3a579c7f6f6281758d770a7df63deecca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

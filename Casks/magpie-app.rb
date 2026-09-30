cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.467"
  sha256 arm:   "b5a2aa4895e878a7cf9c14989a715874245c10ebea2076f9e8d934e71cfe776f",
         intel: "16557722be7cb42732d1da99314b54c51ac25e76c4b1528d1e87383bb0c84d5c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

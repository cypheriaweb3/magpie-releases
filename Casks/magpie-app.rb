cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.596"
  sha256 arm:   "0ec2dbbc024c7dfaabd19a61cfdf126971a3a0a0f9540b418d7d64c884cf0db9",
         intel: "a605c56a200cd73ea587bb236936a82f3721ee73f64dd440a89635979333a857"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.160"
  sha256 arm:   "d695cee7d4d7385d020bc6d74e7af979689cd3f41acb5ea9ee43449e7d9127fb",
         intel: "e16bf4c2fd7c55bfc99d23de34b81f5a668f384c486f8421c38d4cd3adc0b135"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.426"
  sha256 arm:   "c074ea93f82d410b8d9d4dc1ddcf330a9aa66dbf3a7ff49d2073d641fe47b7be",
         intel: "154e2b4f47582859e8e767fb3b8a570281aaeee81b0245cbbe3d750931927340"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

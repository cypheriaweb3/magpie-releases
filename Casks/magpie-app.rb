cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.784"
  sha256 arm:   "d4d969092a5c6bb458b0272b3667782e90916d0987fd243189a29765783f712e",
         intel: "a6d5d7f6adf6558097bdff326a4cfb4123e378889a4f29a8862f413bfbaf1498"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

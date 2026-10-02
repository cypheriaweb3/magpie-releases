cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.683"
  sha256 arm:   "d94cf8f6e76051e604c240f34b41337f082976183d27d3a6a93a385ed9856402",
         intel: "f688f93244e38a16b84415a6f8f4a24a00d41d6916087e9d022284a903361c8d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

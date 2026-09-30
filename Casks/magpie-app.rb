cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.449"
  sha256 arm:   "56d2d7163ed1392776d71369d979f80bdbeb14bf622578ddc4ca2e3984b5d448",
         intel: "a2a59dbff5671b5be0ca144fa52e42fe337b2484b4e1115bedd48afc588d7039"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

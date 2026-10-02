cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.636"
  sha256 arm:   "42a11e2b273cc0bff2d37f05a266e7ddef3bab921910285fdb6f7c5751066d7b",
         intel: "87a45e14a78104d97dc5ddba2e956d2688c54c647e33188c6a1dec5592012ea1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

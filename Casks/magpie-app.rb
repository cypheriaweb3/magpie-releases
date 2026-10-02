cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.679"
  sha256 arm:   "1dbbf72c08c4d6f3190c39a2461fb578c178c6776f619028c98eeeabc849ec39",
         intel: "6e61c07b009c0c00496cf04c3ccedaa6f24a21d57016aab840eba815e50c35dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

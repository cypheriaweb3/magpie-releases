cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.847"
  sha256 arm:   "a03ec014caf930d4fbf603f921c0698739f120abfb70d02d88cc71a52b206dc9",
         intel: "ed05c418d8430c8773e5efbcadee7205fc58a1519d380b5cc001fe97c168dc76"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

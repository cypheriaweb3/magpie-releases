cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.824"
  sha256 arm:   "57b4b2319de659d02679dabbac18d2ef92854f76ac91d98b1fe9f0641d4ebd55",
         intel: "fbfc8e2ab992d9a2ef6a7dc5d78c520d09ae055d839f9ed3832db076d674287a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

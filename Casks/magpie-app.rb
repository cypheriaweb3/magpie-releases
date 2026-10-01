cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.601"
  sha256 arm:   "643e5ca6a9d5ce71b11704d91dad809c401e36816635d329527f3cea6584f3bb",
         intel: "1792f674a1350992dd1549d1725e9799974fcbaeb27312635c62dcaff8db4bbf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

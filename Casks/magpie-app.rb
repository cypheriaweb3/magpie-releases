cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.873"
  sha256 arm:   "23ac108ddfe0747ed36b0177a2383f678fc84e474c32ef18e19a7fb02dc676f6",
         intel: "f252d1c90cec28cbc8445317fea8ca902ba110e98638aa128202fc943ceea905"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

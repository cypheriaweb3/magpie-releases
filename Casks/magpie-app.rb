cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.208"
  sha256 arm:   "bbdf124fcd44b1f68a9c266c97af59d90e2a8274f51340ec6a3b176182393147",
         intel: "44617be2845d38c26a7b2f9406d65afdbb3d941334c65d5e9a4e27bf43b9b84b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

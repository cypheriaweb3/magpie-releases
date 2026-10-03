cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.718"
  sha256 arm:   "d2dba2938d333da266349d28771d74e3de4586c8664801d4bcf00c7497e560bf",
         intel: "8951e539d34d77043c57c8543942970cf5e37acf3d4154f9908d623bc2326b0b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

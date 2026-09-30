cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.514"
  sha256 arm:   "baaeb47aeb60c880cb98e6f3c083caa0282814d5a254b84007a6973180c0624e",
         intel: "b4f808f5fcf72da6e77b00852f107a3c12ad9fff048d5570c58bf1c0c35a6f2d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

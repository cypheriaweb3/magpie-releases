cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.612"
  sha256 arm:   "d49a33e1989be82f02fde36f493937d2dcb7183527ec5ca13fb2619949014282",
         intel: "fdd97e1022b806d1effd5551bc8ab6b20bdc90176a4b7cb27efcab50e80cdb0a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

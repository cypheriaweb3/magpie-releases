cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.768"
  sha256 arm:   "7b8a8a28ffcb70a0ab83a171b9e0c8cad9d05485197e74a1c5469722f477ca1d",
         intel: "faa283bbdf4af8a38c42cf4677bfee82edd0980cf249594dcd4255ff65b93315"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

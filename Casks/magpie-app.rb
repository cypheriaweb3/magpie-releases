cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.560"
  sha256 arm:   "bd895eb6d344192d3643d01c14e02c34ddf739323dc39e3ae8857d24ad4d9e1d",
         intel: "32ba401b8a2ab188aa059fb80569e378a5a768aa37e01b6ee2098e8faf860c52"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

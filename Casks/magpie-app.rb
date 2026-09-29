cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.367"
  sha256 arm:   "49937d4d1bbfbecb6e4b40a433d765fb873761a226429a8b197e6b018cc64848",
         intel: "090d80612b318e2f85a7adba17613f8af57404c12d5a42d57cf6bfc821442b53"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

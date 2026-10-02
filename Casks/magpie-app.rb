cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.627"
  sha256 arm:   "b1b4d211fe7bd836af0c6f790afd385b9edecb2d5ecdbb4d228c961e14ca0896",
         intel: "26e8065f20a3582df27d209557bb3ecc0228e4a99528a1441fdedaa18d5059b5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

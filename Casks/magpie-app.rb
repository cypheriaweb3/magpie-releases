cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.368"
  sha256 arm:   "57ab5b931bc474732d192d28801e6b705e58f442ec006a2ba40422d0787160cf",
         intel: "2562aba08a2ec62f4787ede1598ec2519b9be54e5270f68701991d48a06263bf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

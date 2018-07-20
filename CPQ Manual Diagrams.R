library(DiagrammeRsvg)

grViz("
digraph boxes_and_circles {

  # Main Graph
    graph [overlap = true, fontsize = 10]

  # Primary Nodes
   node [shape = box, fontname = Futura, width = 2.5]
  Accounts; Opportunity; Quote; Product; Pricing; Term; Lead

  # Renewal Node
  node [shape = box, fontname = Futura, width = 2.5, style = dotted, penwidth = 2.5]
  Contract; Renewal_Opportunity; Renewal_Quote; Renewal_Contract;

  # Status Node
  node [shape = circle, fontname = Futura, width = .1, style = line]
  Closed_Won

  # Edges
  Accounts->Opportunity Opportunity->Quote Quote->Product Quote->Pricing Quote->Term
  Product->Closed_Won Pricing->Closed_Won Term->Closed_Won
  Closed_Won->Contract
  Contract->Renewal_Opportunity
  Renewal_Opportunity->Renewal_Quote Renewal_Quote->Renewal_Contract
  Lead->Accounts Lead->Opportunity
}
")

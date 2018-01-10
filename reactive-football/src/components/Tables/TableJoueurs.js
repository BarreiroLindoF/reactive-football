import React, { Component } from 'react';

import {
  Badge,
  Container,
  Row,
  Col,
  Card,
  CardHeader,
  CardBody,
  Table,
  Pagination,
  PaginationItem,
  PaginationLink
} from 'reactstrap';
import axios from 'axios';  

import './styles.css';

class TableJoueurs extends Component {

  constructor(props) {
    super(props);
    const data = props.joueurs == null ? [] : props.joueurs;
    this.state = {
      joueurs: data,
      tenDisplayPlayers:[],
      nextPlayerInd:0,
      nbPlayerToDisplay:10,
    };
  }

  componentDidMount() {
    this.props.onRef(this)
  }

  componentWillUnmount() {
    this.props.onRef(undefined)
  }

  populateTable(joueurs) {
    this.setState({ joueurs });
    this.getTenPlayers(0,10);    
  }

  selectPlayer(row) {
    if (this.props.onClick) {
      this.props.onClick(row);
    }
  }

  getTenPlayers(startInd,endInd){
    var table=[]
    var nbPlayers = this.state.joueurs.length
    //Pré condition avant l'entrée dans la boucle pour ne pas tenter d'accéder à un indice inexistant dans la liste de joueurs
    if (!(endInd < nbPlayers)) {
      endInd=nbPlayers-1
    }else if ((startInd < 0)){
      startInd=0
      endInd=startInd+this.state.nbPlayerToDisplay
    }
    for(var i=startInd;i<endInd;i++){
      table[i]=this.state.joueurs[i]
    }
    this.setState({
      tenDisplayPlayers:table,
      nextPlayerInd:endInd
    });
  }

  render() {
    return (
      <Container>
        <Row>
          <Col xs="12" lg="12" style={{padding : 0}}>
            <Card>
              <CardHeader>
                <i className="fa fa-align-justify"></i> Joueurs
              </CardHeader>
              <CardBody>
                <Table responsive striped>
                  <thead>
                    <tr>
                      <th>Nom du joueur</th>
                      <th>Nationalité</th>
                      <th>Club</th>
                      <th>Pays du club</th>
                    </tr>
                  </thead>
                  <tbody >
                    {this.state.tenDisplayPlayers.map((row) => (
                      <tr key={row.id} data-item={row} onClick={() => this.selectPlayer(row)} style={{ cursor: 'pointer' }}>
                        <td>{row.nom}</td>
                        <td >{row.nationalite}</td>
                        <td>{row.club}</td>
                        <td>{row.pays_club}</td>
                        <td>
                          <Badge color="success">{row.Classement}</Badge>
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </Table>
                <Pagination size={"30"} >
                  <PaginationItem className="clickable" onClick={()=>this.getTenPlayers(this.state.nextPlayerInd-2*this.state.nbPlayerToDisplay,this.state.nextPlayerInd-this.state.nbPlayerToDisplay)}><PaginationLink previous >Prev</PaginationLink></PaginationItem>
                  <PaginationItem className="clickable"><PaginationLink onClick={()=>this.getTenPlayers(this.state.nextPlayerInd,this.state.nextPlayerInd+this.state.nbPlayerToDisplay)} next >Next</PaginationLink></PaginationItem>
                </Pagination>
              </CardBody>
            </Card>
          </Col>
        </Row>
      </Container>
    )
  }
}

export default TableJoueurs;
